.class public Lyads/ps2;
.super Lyads/m05;
.source "SourceFile"


# instance fields
.field private adUiElementsProvider:Lyads/z80;

.field private playerView:Lyads/wt5;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/m05;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lyads/m05;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lyads/m05;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public final getAdUiElements()Lyads/v96;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getAdUiElementsProvider()Lyads/z80;
    .locals 0

    iget-object p0, p0, Lyads/ps2;->adUiElementsProvider:Lyads/z80;

    return-object p0
.end method

.method public final getPlayerView()Lyads/wt5;
    .locals 0

    iget-object p0, p0, Lyads/ps2;->playerView:Lyads/wt5;

    return-object p0
.end method

.method public final setAdUiElements(Lyads/v96;)V
    .locals 0

    return-void
.end method

.method public final setAdUiElementsProvider(Lyads/z80;)V
    .locals 0

    iput-object p1, p0, Lyads/ps2;->adUiElementsProvider:Lyads/z80;

    return-void
.end method

.method public final setPlayerView(Lyads/wt5;)V
    .locals 0

    iput-object p1, p0, Lyads/ps2;->playerView:Lyads/wt5;

    return-void
.end method
