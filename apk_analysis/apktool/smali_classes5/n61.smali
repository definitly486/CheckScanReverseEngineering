.class public final synthetic Ln61;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxl3;
.implements Lcom/my/target/wf$b;


# instance fields
.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ln61;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lpfa;)V
    .locals 0

    iget-object p0, p0, Ln61;->b:Ljava/lang/Object;

    check-cast p0, Lhga;

    sget p2, Lcom/my/target/wj;->k:I

    invoke-virtual {p0, p1}, Lhga;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ln61;->b:Ljava/lang/Object;

    check-cast p0, Lq61;

    invoke-virtual {p0, p1}, Lq61;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method
