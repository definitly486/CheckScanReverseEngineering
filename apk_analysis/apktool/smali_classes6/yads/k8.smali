.class public final Lyads/k8;
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

    iput-object v0, p0, Lyads/k8;->a:Lyads/ku4;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Map;
    .locals 1

    iget-object p0, p0, Lyads/k8;->a:Lyads/ku4;

    sget-object v0, Lyads/s5;->f:Lyads/s5;

    invoke-static {v0}, Ll1;->f(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lyads/ku4;->a(Ljava/util/Set;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0
.end method
