.class public final synthetic Lt7a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/my/target/k1;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/k1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt7a;->b:Lcom/my/target/k1;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lt7a;->b:Lcom/my/target/k1;

    invoke-virtual {p0}, Lcom/my/target/k1;->c()V

    return-void
.end method
