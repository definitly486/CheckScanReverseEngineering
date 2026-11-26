.class public interface abstract Lw18;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final u1:Liz6;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lt18;->c:Lt18;

    new-instance v1, Liz6;

    invoke-direct {v1, v0}, Liz6;-><init>(Lt18;)V

    sput-object v1, Lw18;->u1:Liz6;

    return-void
.end method


# virtual methods
.method public abstract a(Le02;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le02<",
            "-",
            "Lt18;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
