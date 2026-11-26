.class public final Lex6$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lex6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lio/grpc/d;

.field public final b:J


# direct methods
.method public constructor <init>(Lio/grpc/d;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lex6$a;->a:Lio/grpc/d;

    iput-wide p2, p0, Lex6$a;->b:J

    return-void
.end method
