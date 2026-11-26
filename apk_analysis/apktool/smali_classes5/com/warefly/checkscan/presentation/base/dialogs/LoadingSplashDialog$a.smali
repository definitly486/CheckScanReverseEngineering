.class public final Lcom/warefly/checkscan/presentation/base/dialogs/LoadingSplashDialog$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/warefly/checkscan/presentation/base/dialogs/LoadingSplashDialog;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/base/dialogs/LoadingSplashDialog;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/base/dialogs/LoadingSplashDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/base/dialogs/LoadingSplashDialog$a;->a:Lcom/warefly/checkscan/presentation/base/dialogs/LoadingSplashDialog;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/base/dialogs/LoadingSplashDialog$a;->a:Lcom/warefly/checkscan/presentation/base/dialogs/LoadingSplashDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    return-void
.end method
