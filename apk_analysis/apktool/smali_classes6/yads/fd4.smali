.class public abstract Lyads/fd4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lyads/ed4;
    .locals 2

    const/4 v0, 0x2

    const-string v1, "expectedValuesPerKey"

    invoke-static {v0, v1}, Lyads/h20;->a(ILjava/lang/String;)I

    new-instance v0, Lyads/ed4;

    invoke-direct {v0, p0}, Lyads/ed4;-><init>(Lyads/fd4;)V

    return-object v0
.end method

.method public abstract b()Ljava/util/Map;
.end method
