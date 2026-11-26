.class public final synthetic Lcq6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Ldq6;

.field public final synthetic c:Ler6;


# direct methods
.method public synthetic constructor <init>(Ldq6;Ler6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcq6;->b:Ldq6;

    iput-object p2, p0, Lcq6;->c:Ler6;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcq6;->b:Ldq6;

    iget-object p1, p1, Ldq6;->c:Lnl3;

    iget-object p0, p0, Lcq6;->c:Ler6;

    iget p0, p0, Ler6;->b:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Lnl3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
