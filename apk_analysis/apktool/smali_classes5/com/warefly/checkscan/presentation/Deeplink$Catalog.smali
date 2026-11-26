.class public abstract Lcom/warefly/checkscan/presentation/Deeplink$Catalog;
.super Lcom/warefly/checkscan/presentation/Deeplink;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/Deeplink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Catalog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Admitad;,
        Lcom/warefly/checkscan/presentation/Deeplink$Catalog$BonusProgram;,
        Lcom/warefly/checkscan/presentation/Deeplink$Catalog$BonusesSearch;,
        Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Category;,
        Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Coupon;,
        Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Favorites;,
        Lcom/warefly/checkscan/presentation/Deeplink$Catalog$OnlineShop;,
        Lcom/warefly/checkscan/presentation/Deeplink$Catalog$OnlineShopsAllCategories;,
        Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Promocode;,
        Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Selection;,
        Lcom/warefly/checkscan/presentation/Deeplink$Catalog$Specials;
    }
.end annotation


# instance fields
.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/warefly/checkscan/presentation/Deeplink;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/warefly/checkscan/presentation/Deeplink$Catalog;->c:Ljava/lang/String;

    return-object p0
.end method
