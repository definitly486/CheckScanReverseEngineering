.class public final synthetic Lm3a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# instance fields
.field public final synthetic b:Lcom/my/target/x0;


# direct methods
.method public synthetic constructor <init>(Lcom/my/target/x0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm3a;->b:Lcom/my/target/x0;

    return-void
.end method


# virtual methods
.method public final onScrollChanged()V
    .locals 0

    iget-object p0, p0, Lm3a;->b:Lcom/my/target/x0;

    invoke-virtual {p0}, Lcom/my/target/x0;->b()V

    return-void
.end method
