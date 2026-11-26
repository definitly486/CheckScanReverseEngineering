.class Lcom/google/gson/internal/bind/TypeAdapters$29;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt39;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/internal/bind/TypeAdapters;->d(Lx39;Lcom/google/gson/TypeAdapter;)Lt39;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lx39;

.field public final synthetic c:Lcom/google/gson/TypeAdapter;


# direct methods
.method public constructor <init>(Lx39;Lcom/google/gson/TypeAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$29;->b:Lx39;

    iput-object p2, p0, Lcom/google/gson/internal/bind/TypeAdapters$29;->c:Lcom/google/gson/TypeAdapter;

    return-void
.end method


# virtual methods
.method public final b(Lcom/google/gson/Gson;Lx39;)Lcom/google/gson/TypeAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/Gson;",
            "Lx39<",
            "TT;>;)",
            "Lcom/google/gson/TypeAdapter<",
            "TT;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapters$29;->b:Lx39;

    invoke-virtual {p2, p1}, Lx39;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/google/gson/internal/bind/TypeAdapters$29;->c:Lcom/google/gson/TypeAdapter;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
