.class public final synthetic Lif9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Ljf9;


# direct methods
.method public synthetic constructor <init>(Ljf9;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lif9;->b:Ljf9;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p0, p0, Lif9;->b:Ljf9;

    iget-object p1, p0, Ljf9;->m:Lff9;

    invoke-interface {p1, p0}, Lff9;->a(Lkf9;)V

    return-void
.end method
