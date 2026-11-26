.class public final Lxs3;
.super Li02$a;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    invoke-direct {p0}, Li02$a;-><init>()V

    iput-object p1, p0, Lxs3;->a:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/reflect/Type;)Li02;
    .locals 1

    new-instance v0, Lx39;

    invoke-direct {v0, p1}, Lx39;-><init>(Ljava/lang/reflect/Type;)V

    iget-object p0, p0, Lxs3;->a:Lcom/google/gson/Gson;

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->g(Lx39;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    new-instance v0, Lys3;

    invoke-direct {v0, p0, p1}, Lys3;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V

    return-object v0
.end method

.method public final b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ln67;)Li02;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ln67;",
            ")",
            "Li02<",
            "Lb57;",
            "*>;"
        }
    .end annotation

    new-instance p2, Lx39;

    invoke-direct {p2, p1}, Lx39;-><init>(Ljava/lang/reflect/Type;)V

    iget-object p0, p0, Lxs3;->a:Lcom/google/gson/Gson;

    invoke-virtual {p0, p2}, Lcom/google/gson/Gson;->g(Lx39;)Lcom/google/gson/TypeAdapter;

    move-result-object p1

    new-instance p2, Lzs3;

    invoke-direct {p2, p0, p1}, Lzs3;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V

    return-object p2
.end method
