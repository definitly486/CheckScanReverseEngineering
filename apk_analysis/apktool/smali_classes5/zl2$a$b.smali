.class public final Lzl2$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzl2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzl2$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lzl2$a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lzl2$a$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lzl2$a$b;->a:Lzl2$a$b;

    return-void
.end method
