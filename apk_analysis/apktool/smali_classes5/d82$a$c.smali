.class public final Ld82$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld82$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld82$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final a:Ld82$a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ld82$a$c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld82$a$c;->a:Ld82$a$c;

    return-void
.end method
