.class public interface abstract Ll02;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lk02;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk02;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ll02;->a:Lk02;

    return-void
.end method


# virtual methods
.method public abstract a(Lfz3;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfz3;",
            ")",
            "Ljava/util/List<",
            "Lj02;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Lfz3;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfz3;",
            "Ljava/util/List<",
            "Lj02;",
            ">;)V"
        }
    .end annotation
.end method
