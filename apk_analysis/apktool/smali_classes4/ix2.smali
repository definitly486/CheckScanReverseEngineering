.class public final Lix2;
.super Lcom/google/common/collect/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/k<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final i:Lix2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lix2;

    sget-object v1, Lcom/google/common/collect/x;->h:Lcom/google/common/collect/x;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lz24;-><init>(Lcom/google/common/collect/l;I)V

    sput-object v0, Lix2;->i:Lix2;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lix2;->i:Lix2;

    return-object p0
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lz24;->f:Lcom/google/common/collect/l;

    return-object p0
.end method

.method public final m()Lcom/google/common/collect/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/l<",
            "Ljava/lang/Object;",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lz24;->f:Lcom/google/common/collect/l;

    return-object p0
.end method
