.class public final Lio/appmetrica/analytics/impl/j4;
.super Lio/appmetrica/analytics/impl/Wc;
.source "SourceFile"


# instance fields
.field public final a:Lio/appmetrica/analytics/impl/if;


# direct methods
.method public constructor <init>(Lio/appmetrica/analytics/impl/if;)V
    .locals 0

    invoke-direct {p0}, Lio/appmetrica/analytics/impl/Wc;-><init>()V

    iput-object p1, p0, Lio/appmetrica/analytics/impl/j4;->a:Lio/appmetrica/analytics/impl/if;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/j4;->a:Lio/appmetrica/analytics/impl/if;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/impl/if;->c(J)Lio/appmetrica/analytics/impl/if;

    return-void
.end method

.method public final b()I
    .locals 2

    iget-object p0, p0, Lio/appmetrica/analytics/impl/j4;->a:Lio/appmetrica/analytics/impl/if;

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lio/appmetrica/analytics/impl/if;->a(J)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public final c()Landroid/util/SparseArray;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lio/appmetrica/analytics/impl/Vc;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroid/util/SparseArray;

    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    return-object p0
.end method
