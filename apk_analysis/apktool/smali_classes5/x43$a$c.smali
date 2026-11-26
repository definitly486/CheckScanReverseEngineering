.class public final Lx43$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx43$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx43$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Lx43$a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lx43$a$c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lx43$a$c;->a:Lx43$a$c;

    return-void
.end method
