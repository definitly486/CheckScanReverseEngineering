.class public abstract Lhy3$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhy3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# static fields
.field public static final a:Lhy3$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lhy3$b$a;

    invoke-direct {v0}, Lhy3$b;-><init>()V

    sput-object v0, Lhy3$b;->a:Lhy3$b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lhy3;Lor7;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public abstract c(Lvy3;)V
.end method
