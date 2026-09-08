.class public Lcom/android/htmlviewer/MotoHTMLViewerActivity;
.super Landroid/app/Activity;
.source "MotoHTMLViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htmlviewer/MotoHTMLViewerActivity$ViewClient;,
        Lcom/android/htmlviewer/MotoHTMLViewerActivity$ChromeClient;
    }
.end annotation


# instance fields
.field private mDoneView:Landroid/view/View;

.field private mIntent:Landroid/content/Intent;

.field private mIsShowDoneView:Z

.field private mLoading:Landroid/view/View;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLoading(Lcom/android/htmlviewer/MotoHTMLViewerActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->mLoading:Landroid/view/View;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->mIsShowDoneView:Z

    return-void
.end method

.method private loadUrl()V
    .locals 3

    iget-object v0, p0, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v2, p0, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    iget-object p0, p0, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->mIntent:Landroid/content/Intent;

    const v0, 0x7f020004

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    const v0, 0x7f020003

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->mLoading:Landroid/view/View;

    const v0, 0x7f020001

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->mDoneView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const-string v2, "mIsShowDoneView"

    iget-boolean v3, p0, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->mIsShowDoneView:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->mIsShowDoneView:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->mIsShowDoneView:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->mDoneView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/android/htmlviewer/MotoHTMLViewerActivity$ViewClient;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/htmlviewer/MotoHTMLViewerActivity$ViewClient;-><init>(Lcom/android/htmlviewer/MotoHTMLViewerActivity;Lcom/android/htmlviewer/MotoHTMLViewerActivity$ViewClient-IA;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v2, Lcom/android/htmlviewer/MotoHTMLViewerActivity$ChromeClient;

    invoke-direct {v2, p0, v3}, Lcom/android/htmlviewer/MotoHTMLViewerActivity$ChromeClient;-><init>(Lcom/android/htmlviewer/MotoHTMLViewerActivity;Lcom/android/htmlviewer/MotoHTMLViewerActivity$ChromeClient-IA;)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object v0, p0, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setEnableSmoothTransition(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string v1, "utf-8"

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->loadUrl()V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object p0, p0, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public onDoneButtonClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->mLoading:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/htmlviewer/MotoHTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
