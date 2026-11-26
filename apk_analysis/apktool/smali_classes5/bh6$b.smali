.class public final Lbh6$b;
.super Lbh6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbh6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lbh6$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbh6$b;

    invoke-direct {v0}, Lbh6;-><init>()V

    sput-object v0, Lbh6$b;->a:Lbh6$b;

    return-void
.end method
