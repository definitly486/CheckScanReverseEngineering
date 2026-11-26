.class public Lyads/br;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ls4;


# direct methods
.method public constructor <init>(Lyads/ls4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/br;->a:Lyads/ls4;

    const/4 p0, 0x2

    invoke-virtual {p1, p0}, Landroid/view/View;->setId(I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lyads/br;->a:Lyads/ls4;

    invoke-virtual {v0, p1}, Lyads/qs;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    const-string v1, "https://yandex.ru"

    const-string v3, "text/html"

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lyads/ha3;)V
    .locals 0

    .line 17
    iget-object p0, p0, Lyads/br;->a:Lyads/ls4;

    invoke-virtual {p0, p1}, Lyads/ls4;->setHtmlWebViewListener(Lyads/ha3;)V

    return-void
.end method
