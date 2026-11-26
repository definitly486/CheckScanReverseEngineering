.class public final Lyads/x60;
.super Landroidx/appcompat/view/ContextThemeWrapper;
.source "SourceFile"


# instance fields
.field public final a:Lcl4;


# direct methods
.method public constructor <init>(Landroid/view/ContextThemeWrapper;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lef;

    const/4 p2, 0x6

    invoke-direct {p1, p0, p2}, Lef;-><init>(Ljava/lang/Object;I)V

    new-instance p2, Lfh8;

    invoke-direct {p2, p1}, Lfh8;-><init>(Lll3;)V

    iput-object p2, p0, Lyads/x60;->a:Lcl4;

    return-void
.end method

.method public static final a(Lyads/x60;)Lyads/j05;
    .locals 1

    new-instance v0, Lyads/j05;

    invoke-super {p0}, Landroidx/appcompat/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0}, Lyads/j05;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method


# virtual methods
.method public final getResources()Landroid/content/res/Resources;
    .locals 0

    iget-object p0, p0, Lyads/x60;->a:Lcl4;

    invoke-interface {p0}, Lcl4;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/Resources;

    return-object p0
.end method
