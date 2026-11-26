.class public final Landroidx/lifecycle/viewmodel/CreationExtras$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/viewmodel/CreationExtras;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljh2;)V
    .locals 0

    invoke-direct {p0}, Landroidx/lifecycle/viewmodel/CreationExtras$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final Key()Landroidx/lifecycle/viewmodel/CreationExtras$Key;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/lifecycle/viewmodel/CreationExtras$Key<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Laa4;->i()V

    const/4 p0, 0x0

    throw p0
.end method
