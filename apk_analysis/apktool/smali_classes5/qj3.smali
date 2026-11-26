.class public abstract Lqj3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv48;


# instance fields
.field public final b:Lv48;


# direct methods
.method public constructor <init>(Lv48;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqj3;->b:Lv48;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lqj3;->b:Lv48;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final r()Lwv8;
    .locals 0

    iget-object p0, p0, Lqj3;->b:Lv48;

    invoke-interface {p0}, Lv48;->r()Lwv8;

    move-result-object p0

    return-object p0
.end method

.method public t0(Lbu0;J)J
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lqj3;->b:Lv48;

    invoke-interface {p0, p1, p2, p3}, Lv48;->t0(Lbu0;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lqj3;->b:Lv48;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
