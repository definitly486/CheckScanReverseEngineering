.class public final Lyads/vp4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/y85;
.implements Lyads/x85;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lyads/yp4;

.field public final synthetic c:Lyads/wp4;


# direct methods
.method public constructor <init>(Lyads/wp4;Ljava/lang/String;Lyads/yp4;)V
    .locals 0

    iput-object p1, p0, Lyads/vp4;->c:Lyads/wp4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lyads/vp4;->a:Ljava/lang/String;

    iput-object p3, p0, Lyads/vp4;->b:Lyads/yp4;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lyads/vp4;->c:Lyads/wp4;

    iget-object v0, v0, Lyads/wp4;->b:Lyads/aq4;

    iget-object v0, v0, Lyads/aq4;->a:Lyads/zu3;

    check-cast v0, Lyads/av3;

    const-string v1, "YmadOmSdkJs"

    invoke-virtual {v0, v1, p1}, Lyads/av3;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lyads/vp4;->c:Lyads/wp4;

    iget-object p1, p1, Lyads/wp4;->b:Lyads/aq4;

    iget-object v0, p0, Lyads/vp4;->a:Ljava/lang/String;

    iget-object p1, p1, Lyads/aq4;->a:Lyads/zu3;

    check-cast p1, Lyads/av3;

    const-string v1, "YmadOmSdkJsUrl"

    invoke-virtual {p1, v1, v0}, Lyads/av3;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lyads/vp4;->b:Lyads/yp4;

    invoke-virtual {p0}, Lyads/yp4;->a()V

    return-void
.end method

.method public final a(Lyads/hi6;)V
    .locals 0

    .line 36
    iget-object p0, p0, Lyads/vp4;->b:Lyads/yp4;

    invoke-virtual {p0}, Lyads/yp4;->a()V

    return-void
.end method
