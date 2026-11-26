.class public final synthetic Lq0a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/my/target/z0$a;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/z0$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq0a;->b:Lcom/my/target/z0$a;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    sget p1, Lcom/my/target/k4;->f:I

    iget-object p0, p0, Lq0a;->b:Lcom/my/target/z0$a;

    invoke-interface {p0}, Lcom/my/target/z0$a;->e()V

    return-void
.end method
