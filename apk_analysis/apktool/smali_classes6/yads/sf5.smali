.class public final Lyads/sf5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lyads/ku4;


# direct methods
.method public constructor <init>(Lyads/t5;)V
    .locals 1

    new-instance v0, Lyads/ku4;

    invoke-direct {v0, p1}, Lyads/ku4;-><init>(Lyads/t5;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lyads/sf5;->a:Lyads/ku4;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 7

    iget-object p0, p0, Lyads/sf5;->a:Lyads/ku4;

    sget-object v0, Lyads/s5;->h:Lyads/s5;

    sget-object v1, Lyads/s5;->i:Lyads/s5;

    sget-object v2, Lyads/s5;->k:Lyads/s5;

    sget-object v3, Lyads/s5;->j:Lyads/s5;

    sget-object v4, Lyads/s5;->l:Lyads/s5;

    sget-object v5, Lyads/s5;->m:Lyads/s5;

    sget-object v6, Lyads/s5;->F:Lyads/s5;

    filled-new-array/range {v0 .. v6}, [Lyads/s5;

    move-result-object v0

    invoke-static {v0}, Lyr;->k0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyads/ku4;->a(Ljava/util/Set;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method
