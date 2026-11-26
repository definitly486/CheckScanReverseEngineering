.class public final Lyads/mv4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lxb4;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lwe;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lwe;-><init>(I)V

    invoke-static {v0}, Lbd4;->a(Lnl3;)Lad4;

    move-result-object v0

    iput-object v0, p0, Lyads/mv4;->a:Lxb4;

    return-void
.end method

.method public static final a(Ldc4;)Lj59;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldc4;->b:Z

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
