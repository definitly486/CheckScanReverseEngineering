.class public final Ldf9$a;
.super Lcf9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldf9;->b(Landroid/app/Activity;Lnl3;Lll3;Lll3;Le02;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ldf9;

.field public final synthetic b:Lll3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lll3<",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lnl3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnl3<",
            "Ljava/lang/String;",
            "Lj59;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic d:Lc31;


# direct methods
.method public constructor <init>(Ldf9;Lll3;Lnl3;Lc31;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf9$a;->a:Ldf9;

    iput-object p2, p0, Ldf9$a;->b:Lll3;

    iput-object p3, p0, Ldf9$a;->c:Lnl3;

    iput-object p4, p0, Ldf9$a;->d:Lc31;

    return-void
.end method


# virtual methods
.method public final a(Lz94;)V
    .locals 0

    iget-object p0, p0, Ldf9$a;->b:Lll3;

    invoke-interface {p0}, Lll3;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final b(Lz94;)V
    .locals 1

    iget-object p1, p0, Ldf9$a;->a:Ldf9;

    iget-boolean v0, p1, Ldf9;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Ldf9;->b:Z

    iget-object p1, p0, Ldf9$a;->c:Lnl3;

    const-string v0, "VK"

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Ldf9$a;->d:Lc31;

    invoke-virtual {p0}, Lc31;->t()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lno5;

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final c(Lz94;)V
    .locals 0

    iget-object p0, p0, Ldf9$a;->d:Lc31;

    invoke-virtual {p0}, Lc31;->t()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lno5;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final d(Lz94;)V
    .locals 0

    iget-object p0, p0, Ldf9$a;->a:Ldf9;

    iget-object p0, p0, Ldf9;->a:Lz94;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lkd0;->c()V

    :cond_0
    return-void
.end method

.method public final e(Lz94;)V
    .locals 1

    iget-object p1, p0, Ldf9$a;->a:Ldf9;

    iget-boolean v0, p1, Ldf9;->b:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Ldf9;->b:Z

    iget-object p1, p0, Ldf9$a;->c:Lnl3;

    const-string v0, "VK"

    invoke-interface {p1, v0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p0, p0, Ldf9$a;->d:Lc31;

    invoke-virtual {p0}, Lc31;->t()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lno5;

    if-eqz p1, :cond_1

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final g(Ll6a;Lz94;)V
    .locals 0

    iget-object p0, p0, Ldf9$a;->d:Lc31;

    invoke-virtual {p0}, Lc31;->t()Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lno5;

    if-eqz p1, :cond_0

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lc31;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
