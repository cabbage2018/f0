
// MdbReaderDlg.cpp : 实现文件
//

#include "stdafx.h"
#include "MdbReader.h"
#include "MdbReaderDlg.h"
#include "afxdialogex.h"
#include <winbase.h>
#include <AFXDB.H>
#include "winuser.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


// 用于应用程序“关于”菜单项的 CAboutDlg 对话框

class CAboutDlg : public CDialogEx
{
public:
	CAboutDlg();

// 对话框数据
#ifdef AFX_DESIGN_TIME
	enum { IDD = IDD_ABOUTBOX };
#endif

	protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV 支持

// 实现
protected:
	DECLARE_MESSAGE_MAP()
};

CAboutDlg::CAboutDlg() : CDialogEx(IDD_ABOUTBOX)
{
}

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialogEx::DoDataExchange(pDX);
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialogEx)
END_MESSAGE_MAP()


// CMdbReaderDlg 对话框



CMdbReaderDlg::CMdbReaderDlg(CWnd* pParent /*=NULL*/)
	: CDialogEx(IDD_MDBREADER_DIALOG, pParent)
{
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);


	mListLastPosition = 0;
}

void CMdbReaderDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialogEx::DoDataExchange(pDX);
	DDX_Control(pDX, ListControl, m_AccessList1);
}

BEGIN_MESSAGE_MAP(CMdbReaderDlg, CDialogEx)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(IDC_BUTTON1, &CMdbReaderDlg::OnBnClickedButtonConnectMdb)
END_MESSAGE_MAP()


// CMdbReaderDlg 消息处理程序

BOOL CMdbReaderDlg::OnInitDialog()
{
	CDialogEx::OnInitDialog();

	// 将“关于...”菜单项添加到系统菜单中。

	// IDM_ABOUTBOX 必须在系统命令范围内。
	ASSERT((IDM_ABOUTBOX & 0xFFF0) == IDM_ABOUTBOX);
	ASSERT(IDM_ABOUTBOX < 0xF000);

	CMenu* pSysMenu = GetSystemMenu(FALSE);
	if (pSysMenu != NULL)
	{
		BOOL bNameValid;
		CString strAboutMenu;
		bNameValid = strAboutMenu.LoadString(IDS_ABOUTBOX);
		ASSERT(bNameValid);
		if (!strAboutMenu.IsEmpty())
		{
			pSysMenu->AppendMenu(MF_SEPARATOR);
			pSysMenu->AppendMenu(MF_STRING, IDM_ABOUTBOX, strAboutMenu);
		}
	}

	// 设置此对话框的图标。  当应用程序主窗口不是对话框时，框架将自动
	//  执行此操作
	SetIcon(m_hIcon, TRUE);			// 设置大图标
	SetIcon(m_hIcon, FALSE);		// 设置小图标

	// TODO: 在此添加额外的初始化代码

	return TRUE;  // 除非将焦点设置到控件，否则返回 TRUE
}

void CMdbReaderDlg::OnSysCommand(UINT nID, LPARAM lParam)
{
	if ((nID & 0xFFF0) == IDM_ABOUTBOX)
	{
		CAboutDlg dlgAbout;
		dlgAbout.DoModal();
	}
	else
	{
		CDialogEx::OnSysCommand(nID, lParam);
	}
}

// 如果向对话框添加最小化按钮，则需要下面的代码
//  来绘制该图标。  对于使用文档/视图模型的 MFC 应用程序，
//  这将由框架自动完成。

void CMdbReaderDlg::OnPaint()
{
	if (IsIconic())
	{
		CPaintDC dc(this); // 用于绘制的设备上下文

		SendMessage(WM_ICONERASEBKGND, reinterpret_cast<WPARAM>(dc.GetSafeHdc()), 0);

		// 使图标在工作区矩形中居中
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// 绘制图标
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialogEx::OnPaint();
	}
}

//当用户拖动最小化窗口时系统调用此函数取得光标
//显示。
HCURSOR CMdbReaderDlg::OnQueryDragIcon()
{
	return static_cast<HCURSOR>(m_hIcon);
}



void CMdbReaderDlg::OnBnClickedButtonConnectMdb(){
	CDatabase m_db;
	CRecordset rs(&m_db);
	
	CString strFile = CString("C:\\TEMP\\DATABASE1.mdb") ;//GetCurrentPath() + 
	CFileFind  fFind;
	BOOL bSuccess = fFind.FindFile(strFile);
	fFind.Close();
	if (!bSuccess)
	{
		AfxMessageBox(L"mdb文件不存在!");
		return;
	}
	
	TRY
	{
		COleVariant var; // 字段类型
		var.ChangeType(VT_BSTR, NULL);
		CString co1,co2,co3;
		
		CString strConnect;
		strConnect.Format(_T("ODBC;DRIVER={MICROSOFT ACCESS DRIVER (*.mdb)};UID=sa;PWD=;DBQ=%s"), strFile);

		if (m_db.Open(NULL, FALSE, FALSE, strConnect))
		{
			//连接数据库成功

			CString strSql;
			strSql = _T("select * from STUDENT");
			rs.Open(CRecordset::forwardOnly,strSql,CRecordset::readOnly);
			while (!rs.IsEOF())
			{
				rs.GetFieldValue(L"ID",co1);
				rs.GetFieldValue(L"ADDR",co2);
				rs.GetFieldValue(L"DATATYPE",co3);
				//m_AccessList1.AddString(co1 + L" --> " + co2 + L"-->" + co3);
				
				mListLastPosition = m_AccessList1.InsertString(mListLastPosition, co1 + L" --> " + co2 + L"-->" + co3);
				mListLastPosition++;

				AfxMessageBox(co1 + L" --> " + co2 + L"-->" + co3);

				rs.MoveNext();
			}
			m_db.Close();
		}
	}CATCH(CDBException, e)
	{
		AfxMessageBox(L":" + e->m_strError);
	}
	END_CATCH;
}
