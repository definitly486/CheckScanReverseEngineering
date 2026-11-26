.class public Lio/appmetrica/analytics/coreutils/internal/limitation/SubstituteTrimmer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer;

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer<",
            "TT;>;TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/SubstituteTrimmer;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer;

    iput-object p2, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/SubstituteTrimmer;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public trim(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/SubstituteTrimmer;->a:Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer;

    invoke-interface {v0, p1}, Lio/appmetrica/analytics/coreutils/internal/limitation/Trimmer;->trim(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lio/appmetrica/analytics/coreutils/internal/limitation/SubstituteTrimmer;->b:Ljava/lang/Object;

    return-object p0

    :cond_0
    return-object p1
.end method
