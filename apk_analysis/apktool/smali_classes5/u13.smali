.class public abstract Lu13;
.super Lr22;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lr22;->Key:Lr22$a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr22;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract k0()Ljava/util/concurrent/Executor;
.end method
