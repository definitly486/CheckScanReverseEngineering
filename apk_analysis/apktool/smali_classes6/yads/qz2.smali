.class public final Lyads/qz2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/bz2;

.field public final b:Ly22;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lyads/q84;)V
    .locals 2

    new-instance v0, Lyads/bz2;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lyads/bz2;-><init>(Landroid/content/Context;)V

    new-instance p1, Lyads/j90;

    invoke-direct {p1, p2}, Lyads/j90;-><init>(Lyads/k75;)V

    invoke-static {}, Lrm9;->b()Ljd8;

    move-result-object p2

    sget-object v1, Lqo2;->a:Loi2;

    sget-object v1, Lsh2;->c:Lsh2;

    invoke-static {p2, v1}, Lo22$a$a;->d(Lo22$a;Lo22;)Lo22;

    move-result-object p2

    invoke-interface {p2, p1}, Lo22;->plus(Lo22;)Lo22;

    move-result-object p1

    invoke-static {p1}, Lz22;->a(Lo22;)Lkz1;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/qz2;->a:Lyads/bz2;

    iput-object p1, p0, Lyads/qz2;->b:Ly22;

    return-void
.end method
