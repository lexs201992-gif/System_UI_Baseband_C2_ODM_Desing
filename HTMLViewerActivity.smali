.class public Lcom/android/htmlviewer/HTMLViewerActivity;
.super Landroid/app/Activity;
.source "HTMLViewerActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/htmlviewer/HTMLViewerActivity$ChromeClient;,
        Lcom/android/htmlviewer/HTMLViewerActivity$ViewClient;
    }
.end annotation


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private mLoading:Landroid/view/View;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLoading(Lcom/android/htmlviewer/HTMLViewerActivity;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mLoading:Landroid/view/View;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private loadUrl()V
    .locals 2

    iget-object v0, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TITLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    iget-object p0, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private setBackButton()V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/htmlviewer/HTMLViewerActivity;->setContentView()V

    const p1, 0x7f020004

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    const p1, 0x7f020003

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mLoading:Landroid/view/View;

    iget-object p1, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/android/htmlviewer/HTMLViewerActivity$ChromeClient;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/htmlviewer/HTMLViewerActivity$ChromeClient;-><init>(Lcom/android/htmlviewer/HTMLViewerActivity;Lcom/android/htmlviewer/HTMLViewerActivity$ChromeClient-IA;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    iget-object p1, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v0, Lcom/android/htmlviewer/HTMLViewerActivity$ViewClient;

    invoke-direct {v0, p0, v1}, Lcom/android/htmlviewer/HTMLViewerActivity$ViewClient;-><init>(Lcom/android/htmlviewer/HTMLViewerActivity;Lcom/android/htmlviewer/HTMLViewerActivity$ViewClient-IA;)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object p1, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setBlockNetworkLoads(Z)V

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mIntent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/htmlviewer/HTMLViewerActivity;->setBackButton()V

    invoke-direct {p0}, Lcom/android/htmlviewer/HTMLViewerActivity;->loadUrl()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object p0, p0, Lcom/android/htmlviewer/HTMLViewerActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected setContentView()V
    .locals 1

    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    return-void
.end method
