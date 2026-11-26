.class public final Lvk6;
.super Lj72;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lj72<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;)V
    .locals 0

    iput-object p1, p0, Lvk6;->b:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;

    invoke-direct {p0}, Lj72;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final onResourceReady(Ljava/lang/Object;Lk29;)V
    .locals 0

    check-cast p1, Landroid/graphics/drawable/Drawable;

    iget-object p0, p0, Lvk6;->b:Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;

    iput-object p1, p0, Lcom/warefly/checkscan/subscription/presentation/badge/ProfileBadgeView;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
