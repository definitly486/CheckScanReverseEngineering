.class public final synthetic Lvfa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/my/target/w4;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/w4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lvfa;->b:Lcom/my/target/w4;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    sget p1, Lcom/my/target/w4;->g:I

    iget-object p0, p0, Lvfa;->b:Lcom/my/target/w4;

    iget-object p0, p0, Lcom/my/target/w4;->e:Lcom/my/target/w1;

    invoke-virtual {p0}, Lcom/my/target/w1;->A()V

    return-void
.end method
