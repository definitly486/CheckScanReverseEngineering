.class public final synthetic Lmw4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/airbnb/lottie/LottieAnimationView;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmw4;->b:Lcom/airbnb/lottie/LottieAnimationView;

    iput p2, p0, Lmw4;->c:I

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/airbnb/lottie/LottieAnimationView;->B:Llw4;

    iget-object v0, p0, Lmw4;->b:Lcom/airbnb/lottie/LottieAnimationView;

    iget-boolean v1, v0, Lcom/airbnb/lottie/LottieAnimationView;->x:Z

    iget p0, p0, Lmw4;->c:I

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lww4;->k(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lww4;->f(Landroid/content/Context;ILjava/lang/String;)Lwx4;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lww4;->f(Landroid/content/Context;ILjava/lang/String;)Lwx4;

    move-result-object p0

    return-object p0
.end method
