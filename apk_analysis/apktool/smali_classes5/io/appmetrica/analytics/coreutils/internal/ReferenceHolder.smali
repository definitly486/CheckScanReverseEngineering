.class public final Lio/appmetrica/analytics/coreutils/internal/ReferenceHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/LinkedHashSet;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/ReferenceHolder;->a:Ljava/util/LinkedHashSet;

    return-void
.end method


# virtual methods
.method public final peekReferences()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/ReferenceHolder;->a:Ljava/util/LinkedHashSet;

    invoke-static {p0}, Lqn1;->y0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final removeReference(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/ReferenceHolder;->a:Ljava/util/LinkedHashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final storeReference(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/ReferenceHolder;->a:Ljava/util/LinkedHashSet;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method
