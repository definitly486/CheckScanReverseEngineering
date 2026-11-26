.class public final Lur0;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;)V
    .locals 0

    iput-object p1, p0, Lur0;->a:Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSpanSize(I)I
    .locals 0

    iget-object p0, p0, Lur0;->a:Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/search/view/BonusesSearchFragment;->j:Li58;

    if-eqz p0, :cond_0

    iget-object p0, p0, Li58;->i:Lm8;

    invoke-virtual {p0, p1}, Lm8;->e(I)Lpz3;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    instance-of p1, p0, Ler6;

    if-eqz p1, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    instance-of p0, p0, Lzu7;

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x6

    return p0
.end method
