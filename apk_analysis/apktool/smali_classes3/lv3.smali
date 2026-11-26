.class public interface abstract Llv3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmm4;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmm4$a;

    invoke-direct {v0}, Lmm4$a;-><init>()V

    new-instance v1, Lmm4;

    iget-object v0, v0, Lmm4$a;->a:Ljava/util/Map;

    invoke-direct {v1, v0}, Lmm4;-><init>(Ljava/util/Map;)V

    sput-object v1, Llv3;->a:Lmm4;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
