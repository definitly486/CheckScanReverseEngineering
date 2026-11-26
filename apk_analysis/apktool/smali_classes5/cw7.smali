.class public final synthetic Lcw7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Ldw7;

.field public final synthetic c:Ldn1;


# direct methods
.method public synthetic constructor <init>(Ldw7;Ldn1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcw7;->b:Ldw7;

    iput-object p2, p0, Lcw7;->c:Ldn1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcw7;->b:Ldw7;

    iget-object p1, p1, Ldw7;->b:Lbv7;

    iget-object p0, p0, Lcw7;->c:Ldn1;

    iget p0, p0, Ldn1;->a:I

    invoke-interface {p1, p0}, Lbv7;->onShopClick(I)V

    return-void
.end method
