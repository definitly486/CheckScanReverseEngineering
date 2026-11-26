.class public final Ll5a$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ll5a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:J

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIIJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p4, p0, Ll5a$c;->a:J

    iput p1, p0, Ll5a$c;->b:I

    iput p2, p0, Ll5a$c;->c:I

    iput p3, p0, Ll5a$c;->d:I

    iput-object p6, p0, Ll5a$c;->e:Ljava/lang/String;

    iput-object p7, p0, Ll5a$c;->f:Ljava/lang/String;

    return-void
.end method
