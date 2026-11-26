.class public final Liz4$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liz4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lf99;

.field public final b:Lio/grpc/m;


# direct methods
.method public constructor <init>(Lf99;Lio/grpc/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liz4$c;->a:Lf99;

    iput-object p2, p0, Liz4$c;->b:Lio/grpc/m;

    return-void
.end method
