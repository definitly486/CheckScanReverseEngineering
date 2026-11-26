.class public abstract Lyads/bp6;
.super Lyads/mp6;
.source "SourceFile"


# instance fields
.field public final c:Ljava/util/HashSet;

.field public final d:Lorg/json/JSONObject;

.field public final e:J


# direct methods
.method public constructor <init>(Lyads/lp6;Ljava/util/HashSet;Lorg/json/JSONObject;J)V
    .locals 0

    invoke-direct {p0, p1}, Lyads/mp6;-><init>(Lyads/lp6;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lyads/bp6;->c:Ljava/util/HashSet;

    iput-object p3, p0, Lyads/bp6;->d:Lorg/json/JSONObject;

    iput-wide p4, p0, Lyads/bp6;->e:J

    return-void
.end method
