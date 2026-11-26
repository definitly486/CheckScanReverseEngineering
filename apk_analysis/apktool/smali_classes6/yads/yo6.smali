.class public final Lyads/yo6;
.super Lyads/s9;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lyads/s9;-><init>(Ljava/lang/String;)V

    new-instance p1, Lyads/np6;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lyads/np6;-><init>(Landroid/webkit/WebView;)V

    iput-object p1, p0, Lyads/s9;->b:Lyads/np6;

    return-void
.end method
