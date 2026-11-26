.class public abstract Lyads/hr3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lxb4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lty2;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lty2;-><init>(I)V

    invoke-static {v0}, Lbd4;->a(Lnl3;)Lad4;

    move-result-object v0

    sput-object v0, Lyads/hr3;->a:Lxb4;

    return-void
.end method

.method public static final a(Ldc4;)Lj59;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldc4;->b:Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
