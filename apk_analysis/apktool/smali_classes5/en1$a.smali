.class public final Len1$a;
.super Len1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Len1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Ldn1;


# direct methods
.method public constructor <init>(Ldn1;)V
    .locals 0

    invoke-direct {p0, p1}, Len1;-><init>(Ldn1;)V

    iput-object p1, p0, Len1$a;->b:Ldn1;

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Len1;->a:Ldn1;

    return-object p0
.end method

.method public final id()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Len1$a;->b:Ldn1;

    iget p0, p0, Ldn1;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
