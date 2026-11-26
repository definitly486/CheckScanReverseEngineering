.class public final Landroidx/paging/TransformablePage$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/paging/TransformablePage;
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

    invoke-direct {p0}, Landroidx/paging/TransformablePage$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final empty()Landroidx/paging/TransformablePage;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Landroidx/paging/TransformablePage<",
            "TT;>;"
        }
    .end annotation

    new-instance p0, Landroidx/paging/TransformablePage;

    const/4 v0, 0x0

    sget-object v1, Lkx2;->b:Lkx2;

    invoke-direct {p0, v0, v1}, Landroidx/paging/TransformablePage;-><init>(ILjava/util/List;)V

    return-object p0
.end method
