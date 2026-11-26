.class public final Lyads/mr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyads/fr;


# instance fields
.field public final a:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyads/mr;->a:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method


# virtual methods
.method public final a(Lyads/kr;)V
    .locals 0

    iget-object p0, p0, Lyads/mr;->a:Landroidx/viewpager/widget/ViewPager;

    iget p1, p1, Lyads/kr;->b:I

    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method public final b(Lyads/kr;)V
    .locals 0

    return-void
.end method
