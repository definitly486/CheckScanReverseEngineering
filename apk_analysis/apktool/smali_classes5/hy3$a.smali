.class public final Lhy3$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lho8;

.field public b:Ljava/net/Socket;

.field public c:Ljava/lang/String;

.field public d:Liy6;

.field public e:Lhy6;

.field public f:Lhy3$b;


# direct methods
.method public constructor <init>(Lho8;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhy3$a;->a:Lho8;

    sget-object p1, Lhy3$b;->a:Lhy3$b$a;

    iput-object p1, p0, Lhy3$a;->f:Lhy3$b;

    return-void
.end method
