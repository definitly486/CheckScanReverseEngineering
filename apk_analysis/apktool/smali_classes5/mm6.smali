.class public final synthetic Lmm6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;


# direct methods
.method public synthetic constructor <init>(Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmm6;->b:Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    iget-object p0, p0, Lmm6;->b:Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;

    iget-boolean p0, p0, Lcom/warefly/checkscan/profile/presentation/main/dialogs/ProfilePromocodeErrorBottomSheet;->d:Z

    if-eqz p0, :cond_0

    sget-object p0, Lkd$a$j$e;->e:Lkd$a$j$e;

    invoke-virtual {p0}, Lkd;->a()V

    return-void

    :cond_0
    sget-object p0, Lkd$a$f$e;->e:Lkd$a$f$e;

    invoke-virtual {p0}, Lkd;->a()V

    return-void
.end method
