.class public final Lyads/cd4;
.super Lyads/fd4;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lyads/xm4;


# direct methods
.method public constructor <init>(Lyads/xm4;)V
    .locals 0

    iput-object p1, p0, Lyads/cd4;->a:Lyads/xm4;

    invoke-direct {p0}, Lyads/fd4;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/util/Map;
    .locals 1

    new-instance v0, Ljava/util/TreeMap;

    iget-object p0, p0, Lyads/cd4;->a:Lyads/xm4;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method
