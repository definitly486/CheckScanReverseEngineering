.class public final synthetic Ln22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl3;


# instance fields
.field public final synthetic b:Lmk2;

.field public final synthetic c:Lxp1;

.field public final synthetic d:Lnl3;


# direct methods
.method public synthetic constructor <init>(Lmk2;Lxp1;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln22;->b:Lmk2;

    iput-object p2, p0, Ln22;->c:Lxp1;

    iput-object p3, p0, Ln22;->d:Lnl3;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ln22;->d:Lnl3;

    check-cast p1, Ljava/lang/Throwable;

    iget-object v1, p0, Ln22;->b:Lmk2;

    iget-object p0, p0, Ln22;->c:Lxp1;

    invoke-static {v1, p0, v0, p1}, Landroidx/camera/camera2/adapter/CoroutineAdaptersKt;->e(Lmk2;Lxp1;Lnl3;Ljava/lang/Throwable;)Lj59;

    move-result-object p0

    return-object p0
.end method
