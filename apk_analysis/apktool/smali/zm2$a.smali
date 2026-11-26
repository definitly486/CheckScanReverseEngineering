.class public final Lzm2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzm2;->onResume(Landroidx/lifecycle/LifecycleOwner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet;

.field public final synthetic d:Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet$b;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet;Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lzm2$a;->b:Landroid/view/View;

    iput-object p2, p0, Lzm2$a;->c:Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet;

    iput-object p3, p0, Lzm2$a;->d:Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet$b;

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lzm2$a;->b:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object p1, p0, Lzm2$a;->c:Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet;

    iget-object p0, p0, Lzm2$a;->d:Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet$b;

    invoke-static {p1, p0}, Lan2;->a(Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet;Lcom/warefly/checkscan/profile/presentation/main/dialogs/enter/view/ProfilePromocodeEnterBottomSheet$b;)V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
