.class public final synthetic Lmw2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/window/reflection/JFunction2;


# instance fields
.field public final synthetic a:Landroidx/window/embedding/EmbeddingAdapter;

.field public final synthetic b:Lnl3;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/embedding/EmbeddingAdapter;Lnl3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmw2;->a:Landroidx/window/embedding/EmbeddingAdapter;

    iput-object p2, p0, Lmw2;->b:Lnl3;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmw2;->a:Landroidx/window/embedding/EmbeddingAdapter;

    iget-object p0, p0, Lmw2;->b:Lnl3;

    check-cast p1, Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;

    invoke-static {v0, p0, p1}, Landroidx/window/embedding/EmbeddingAdapter;->i(Landroidx/window/embedding/EmbeddingAdapter;Lnl3;Landroidx/window/extensions/embedding/SplitAttributesCalculatorParams;)Landroidx/window/extensions/embedding/SplitAttributes;

    move-result-object p0

    return-object p0
.end method
