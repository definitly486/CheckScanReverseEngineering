.class public final Liu2;
.super Lgh4;
.source "SourceFile"

# interfaces
.implements Lnl3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgh4;",
        "Lnl3<",
        "Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;",
        "Lj59;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lnu2;


# direct methods
.method public constructor <init>(Lnu2;)V
    .locals 0

    iput-object p1, p0, Liu2;->f:Lnu2;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lgh4;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Liu2;->f:Lnu2;

    iget-object p0, p0, Lnu2;->e:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;->setAppStoreId(Ljava/lang/String;)Lcom/google/firebase/dynamiclinks/DynamicLink$IosParameters$Builder;

    sget-object p0, Lj59;->a:Lj59;

    return-object p0
.end method
