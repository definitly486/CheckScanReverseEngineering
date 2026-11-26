.class public Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsView$$State$ShowOrdBottomSheetCommand;
.super Lwd9;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsView$$State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShowOrdBottomSheetCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lwd9<",
        "Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsView;",
        ">;"
    }
.end annotation


# instance fields
.field public final data:Lb06;


# direct methods
.method public constructor <init>(Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsView$$State;Lb06;)V
    .locals 1

    const-string p1, "showOrdBottomSheet"

    const-class v0, Lhx5;

    invoke-direct {p0, p1, v0}, Lwd9;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    iput-object p2, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsView$$State$ShowOrdBottomSheetCommand;->data:Lb06;

    return-void
.end method


# virtual methods
.method public apply(Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsView;)V
    .locals 0

    .line 6
    iget-object p0, p0, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsView$$State$ShowOrdBottomSheetCommand;->data:Lb06;

    invoke-interface {p1, p0}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsView;->showOrdBottomSheet(Lb06;)V

    return-void
.end method

.method public bridge synthetic apply(Ljh5;)V
    .locals 0

    check-cast p1, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsView;

    invoke-virtual {p0, p1}, Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsView$$State$ShowOrdBottomSheetCommand;->apply(Lcom/warefly/checkscan/presentation/bonuses/favoritePreviews/view/FavoritePreviewsView;)V

    return-void
.end method
