.class public final Landroidx/compose/foundation/lazy/layout/CachedItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;
    }
.end annotation


# static fields
.field public static final $stable:I

.field public static final NoKey:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;


# instance fields
.field private key:Ljava/lang/Object;

.field private mainAxisSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;-><init>(Ljh2;)V

    sput-object v0, Landroidx/compose/foundation/lazy/layout/CachedItem;->NoKey:Landroidx/compose/foundation/lazy/layout/CachedItem$NoKey;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/foundation/lazy/layout/CachedItem;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/CachedItem;->key:Ljava/lang/Object;

    iput p2, p0, Landroidx/compose/foundation/lazy/layout/CachedItem;->mainAxisSize:I

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/CachedItem;->key:Ljava/lang/Object;

    return-object p0
.end method

.method public final getMainAxisSize()I
    .locals 0

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/CachedItem;->mainAxisSize:I

    return p0
.end method

.method public final setKey(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/CachedItem;->key:Ljava/lang/Object;

    return-void
.end method

.method public final setMainAxisSize(I)V
    .locals 0

    iput p1, p0, Landroidx/compose/foundation/lazy/layout/CachedItem;->mainAxisSize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CachedItem(key="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/CachedItem;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mainAxisSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/foundation/lazy/layout/CachedItem;->mainAxisSize:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Lrg;->h(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
